.class public final Lcom/tencent/tmediacodec/b/f;
.super Lcom/tencent/tmediacodec/b/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/tmediacodec/b/d;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/tencent/tmediacodec/b/e;-><init>(Landroid/media/MediaCodec;Lcom/tencent/tmediacodec/b/d;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;
    .locals 6
    .param p1    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->e:Lcom/tencent/tmediacodec/b/d;

    .line 2
    iget-object v1, v0, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/tencent/tmediacodec/b/d;->d:I

    iget v4, p1, Lcom/tencent/tmediacodec/b/d;->d:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/tencent/tmediacodec/b/e;->c:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/tencent/tmediacodec/b/d;->b:I

    iget v4, p1, Lcom/tencent/tmediacodec/b/d;->b:I

    if-ne v1, v4, :cond_1

    iget v0, v0, Lcom/tencent/tmediacodec/b/d;->c:I

    iget v1, p1, Lcom/tencent/tmediacodec/b/d;->c:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 3
    iget v0, p1, Lcom/tencent/tmediacodec/b/d;->b:I

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->g:Lcom/tencent/tmediacodec/b/a;

    iget v4, v1, Lcom/tencent/tmediacodec/b/a;->a:I

    if-gt v0, v4, :cond_6

    iget v0, p1, Lcom/tencent/tmediacodec/b/d;->c:I

    iget v1, v1, Lcom/tencent/tmediacodec/b/a;->b:I

    if-gt v0, v1, :cond_6

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/tmediacodec/f/c;->a(Lcom/tencent/tmediacodec/b/e;Lcom/tencent/tmediacodec/b/d;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e;->g:Lcom/tencent/tmediacodec/b/a;

    iget v1, v1, Lcom/tencent/tmediacodec/b/a;->c:I

    if-gt v0, v1, :cond_6

    .line 5
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->e:Lcom/tencent/tmediacodec/b/d;

    .line 6
    iget-object v1, p1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, v0, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v4, p1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 8
    iget-object v4, p1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, v0, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 9
    sget-object p1, Lcom/tencent/tmediacodec/d/a$b;->d:Lcom/tencent/tmediacodec/d/a$b;

    return-object p1

    .line 10
    :cond_5
    sget-object p1, Lcom/tencent/tmediacodec/d/a$b;->c:Lcom/tencent/tmediacodec/d/a$b;

    return-object p1

    .line 11
    :cond_6
    sget-object p1, Lcom/tencent/tmediacodec/d/a$b;->a:Lcom/tencent/tmediacodec/d/a$b;

    return-object p1
.end method

.method public final j()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/tmediacodec/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e;->e:Lcom/tencent/tmediacodec/b/d;

    iget v0, v0, Lcom/tencent/tmediacodec/b/d;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoCodecWrapper["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
