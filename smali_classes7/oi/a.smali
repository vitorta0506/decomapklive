.class public interface abstract Loi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Loi/b;Lorg/apache/http/i;)Lorg/apache/http/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method
