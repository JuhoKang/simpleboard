package kr.re.ec.exerciseboard.dao;

import java.util.List;

import kr.re.ec.exerciseboard.model.Post;

import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;

@Repository("postDao")
public class PostDaoImpl extends AbstractDao<Integer, Post> implements PostDao {

  @Override
  public void savePost(Post post) {
    persist(post);
  }

  @Override
  public void deletePostById(int id) {
    Post target = new Post();
    target.setId(id);
    delete(target);
  }

  @Override
  public void updatePost(Post post) {
    update(post);
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<Post> getAllPosts() {
    return createEntityCriteria().list();
  }

  @Override
  public int countAllPosts() {
    return createEntityCriteria().setProjection(Projections.rowCount()).uniqueResult().hashCode();
  }

  /**
   * This method is half open first <= x < last
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Post> getNPostsFromM(int m, int n) {
    return createEntityCriteria().setFirstResult(m).setMaxResults(n).list();
  }

}
