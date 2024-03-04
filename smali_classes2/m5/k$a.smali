.class public abstract Lm5/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lm5/k;
.end method

.method public b()Lm5/k;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lm5/k$a;->a()Lm5/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm5/k;->f()I

    move-result v1

    invoke-virtual {v0}, Lm5/k;->d()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "rpcsPerChannel range is invalid"

    .line 3
    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lm5/k;->e()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Minimum channel count must be at least 1"

    .line 5
    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lm5/k;->e()I

    move-result v1

    invoke-virtual {v0}, Lm5/k;->d()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v2, "absolute channel range is invalid"

    .line 7
    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lm5/k;->e()I

    move-result v1

    invoke-virtual {v0}, Lm5/k;->b()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string v2, "initial channel count be at least minChannelCount"

    .line 9
    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lm5/k;->b()I

    move-result v1

    invoke-virtual {v0}, Lm5/k;->c()I

    move-result v2

    if-gt v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    const-string v2, "initial channel count must be less than maxChannelCount"

    .line 11
    invoke-static {v1, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lm5/k;->b()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const-string v1, "Initial channel count must be greater than 0"

    .line 13
    invoke-static {v3, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public abstract c(I)Lm5/k$a;
.end method

.method public abstract d(I)Lm5/k$a;
.end method

.method public abstract e(I)Lm5/k$a;
.end method

.method public abstract f(I)Lm5/k$a;
.end method

.method public abstract g(I)Lm5/k$a;
.end method

.method public abstract h(Z)Lm5/k$a;
.end method
