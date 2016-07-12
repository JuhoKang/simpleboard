package kr.re.ec.exerciseboard.dao;

import java.util.List;

import kr.re.ec.exerciseboard.model.Post;

public interface PostDao {
  
  public void savePost(Post post);
  
  public void deletePostById(int id);
  
  public void updatePost(Post post);
  
  public List<Post> getAllPosts();
  
  public int countAllPosts();
  
  public List<Post> getNPostsFromM(int m, int n);

}
