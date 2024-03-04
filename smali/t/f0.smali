.class public Lt/f0;
.super Lt/g0;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lt/q;Z)V
    .locals 0
    .param p1    # Lt/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lt/g0;-><init>(Lt/q;)V

    .line 2
    iput-boolean p2, p0, Lt/f0;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lu/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a;",
            "Ljava/util/List<",
            "Lu/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lt/f0;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/a;->O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lt/g0;->a(Lu/a;Ljava/util/List;)V

    return-void
.end method
