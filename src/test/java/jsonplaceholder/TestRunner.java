package jsonplaceholder;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
// class TestRunner {

// @Karate.Test
// Karate testUsers() {
// return Karate.run("users/users").relativeTo(getClass());
// }

// @Karate.Test
// Karate testPosts() {
// return Karate.run("posts/posts").relativeTo(getClass());
// }

// @Karate.Test
// Karate testComments() {
// return Karate.run("comments/comments").relativeTo(getClass());
// }
// }
