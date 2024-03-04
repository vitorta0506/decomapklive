package g5;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface g {

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface a {
        String key();

        Class<?> ref();
    }

    a[] typeDefinitions();
}
