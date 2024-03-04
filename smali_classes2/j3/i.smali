.class public interface abstract Lj3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/i$a;
    }
.end annotation


# virtual methods
.method public abstract b(Lj3/l;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lj3/b0;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
