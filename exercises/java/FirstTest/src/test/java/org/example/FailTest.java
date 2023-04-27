package org.example;

import org.junit.jupiter.api.Test;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;
public class FailTest {
    @Test
    void shouldFail() {
        assertThat(true, equalTo(false));
    }
}
