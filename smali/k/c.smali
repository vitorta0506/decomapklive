.class public interface abstract Lk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract Q()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract a0()Ljava/io/InputStream;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isSuccessful()Z
.end method

.method public abstract u()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
