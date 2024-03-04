.class public Lvc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lvc/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/linecorp/linesdk/LineIdToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvc/d;Ljava/util/List;Lcom/linecorp/linesdk/LineIdToken;)V
    .locals 0
    .param p1    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/LineIdToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/d;",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;",
            "Lcom/linecorp/linesdk/LineIdToken;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvc/e;->a:Lvc/d;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lvc/e;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    return-void
.end method


# virtual methods
.method public a()Lvc/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lvc/e;->a:Lvc/d;

    return-object v0
.end method

.method public b()Lcom/linecorp/linesdk/LineIdToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lvc/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lvc/e;

    .line 3
    iget-object v2, p0, Lvc/e;->a:Lvc/d;

    iget-object v3, p1, Lvc/e;->a:Lvc/d;

    invoke-virtual {v2, v3}, Lvc/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lvc/e;->b:Ljava/util/List;

    iget-object v3, p1, Lvc/e;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    iget-object p1, p1, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/linecorp/linesdk/LineIdToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvc/e;->a:Lvc/d;

    invoke-virtual {v0}, Lvc/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lvc/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IssueAccessTokenResult{accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvc/e;->a:Lvc/d;

    .line 2
    invoke-static {v1}, Lyc/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvc/e;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvc/e;->c:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
