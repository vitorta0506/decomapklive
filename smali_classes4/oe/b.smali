.class public final Loe/b;
.super Loe/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "camera"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "*/*"

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loe/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loe/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
