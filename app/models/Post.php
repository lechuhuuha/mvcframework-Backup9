<?php

class Post
{
    private $db;
    public function __construct()
    {
        $this->db = new Database;
    }
    /**
     * Find all the post in db
     * @param number $offset
     * @param number $no_records_of_page
     * @return array $result
     */
    public function findAllPost($offset,$no_records_of_pages)
    {
        $this->db->query("SELECT *FROM posts  ORDER BY created_at DESC LIMIT $offset,$no_records_of_pages");
        $result = $this->db->resultSet();

        return $result;
    }
    /**
     * Count the page
     * @return object $result
     */
    public function countPages(){
        $this->db->query('SELECT COUNT(*) FROM posts');
        $result= $this->db->single();
        return $result;
    }
    /**
     * Add one post
     * @param string[] $data
     * @param true|false
     * 
     */
    public function addPost($data)
    {
        $this->db->query('INSERT INTO posts (user_id,title,summary,body,image) VALUES (:user_id,:title,:summary,:body,:image)');
        $this->db->bind(':user_id', $data['user_id']);
        $this->db->bind(':title', $data['title']);
        $this->db->bind(':summary', $data['summary']);
        $this->db->bind(':body', $data['body']);
        $this->db->bind(':image', $data['image']);
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * Add one topic 
     * @param string[] $data
     * @return true|false
     */
    public function addTopic($data){
        // topic name and post id in post_topic
        $this->db->query('INSERT INTO topics (topic_name) VALUES (:topic_name)');
        $topic_name=$data['topic_name'];
        $this->db->bind(':topic_name',$topic_name);
       
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
        // add topic and then get id of the topic 
        // use id of the topic to add in post_topic table
        // user id of the post to add in post_topic table
        
    }
    /**
     * Find a single post using id
     * @param number $id
     * @return object $row
     */
    public function findPostById($id)
    {

        $this->db->query('SELECT * FROM posts WHERE id=:id ORDER BY created_at DESC');
        $this->db->bind(':id', $id);
        $row = $this->db->single();
        return $row;
    }
    /**
     * Update a single post 
     * @param string[] $data
     * @return true|false
     */
    public function updatePost($data)
    {
        $this->db->query('UPDATE posts SET title=:title,summary=:summary,image=:image,body=:body WHERE id=:id');
        $this->db->bind(':id', $data['id']);
        $this->db->bind(':title', $data['title']);
        $this->db->bind(':summary',$data['summary']);
        $this->db->bind(':image',$data['image']);
        $this->db->bind(':body', $data['body']);
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * Delete a single post
     * @param number $id
     * @return true|false
     */
    public function deletePost($id)
    {
        $this->db->query('DELETE FROM posts  WHERE id = :id ');
        $this->db->bind(':id', $id);
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * Increase the view of specific post
     * @param object[] $data
     * @return true|false
     */
    public function incsView($data)
    {
        $this->db->query('UPDATE posts SET views=:views WHERE id=:id');
        $this->db->bind(':id', $data['post']->id);
        $incsPost = $data['post']->views;
        $incsPost++;
        $this->db->bind(':views', $incsPost);
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * Search post using title
     * @param string $title
     * @return array $result
     */
    public function searchPost($title)
    {
        $this->db->query('SELECT * FROM posts WHERE title LIKE :title');
        $this->db->bind(':title','%'.$title.'%');
        $result = $this->db->resultSet();
        return $result;
    }
    /**
     * Show the comment using id 
     * 
     */
    public function showCmt($id){
        $this->db->query('SELECT * FROM comments WHERE page_id=:page_id');
        $this->db->bind(':page_id',$id);
        $result = $this->db->resultSet();
        return $result;
    }
    /**
     * Find all the topics
     */
    public function findAllTopics(){
        // $this->db->query('SELECT * FROM post_topic');
        // $result = $this->db->resultSet();
        // $topic_id= $result[0]->topic_id;
        $this->db->query('SELECT * FROM topics ');
        // $this->db->bind(':topic_id',$topic_id);
        $re = $this->db->resultSet();
        return $re;
    }
    /**
     * Find post by topics
     */
    public function findPostByTopic($topic_id){
        $this->db->query('SELECT * FROM post_topic WHERE topic_id=:topic_id');
        $this->db->bind(':topic_id',$topic_id);
        $result=$this->db->resultSet();
        $this->db->query('SELECT * FROM posts WHERE topic_id=:topic_id');
        $topic_id=$result[0]->topic_id;
        $this->db->bind(':topic_id',$topic_id);
        $re=$this->db->resultSet();
        return $re;
    }
    /**
     * Find post by author 
     */
    public function findPostByAuthor($id){
        $this->db->query('SELECT * FROM posts WHERE user_id=:user_id');
        $this->db->bind(':user_id',$id);
        $result=$this->db->resultSet();
        return $result;
    }

}
