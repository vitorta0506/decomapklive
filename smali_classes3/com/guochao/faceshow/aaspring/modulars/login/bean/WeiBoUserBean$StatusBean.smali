.class public Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusBean"
.end annotation


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private comments_count:I

.field private created_at:Ljava/lang/String;

.field private favorited:Z

.field private id:J

.field private in_reply_to_screen_name:Ljava/lang/String;

.field private in_reply_to_status_id:Ljava/lang/String;

.field private in_reply_to_user_id:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private reposts_count:I

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public getComments_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->comments_count:I

    return v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->id:J

    return-wide v0
.end method

.method public getIn_reply_to_screen_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_status_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_status_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIn_reply_to_user_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getReposts_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->reposts_count:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->truncated:Z

    return v0
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->annotations:Ljava/util/List;

    return-void
.end method

.method public setComments_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->comments_count:I

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setFavorited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->favorited:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->id:J

    return-void
.end method

.method public setIn_reply_to_screen_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setIn_reply_to_status_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_status_id:Ljava/lang/String;

    return-void
.end method

.method public setIn_reply_to_user_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->in_reply_to_user_id:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->mid:Ljava/lang/String;

    return-void
.end method

.method public setReposts_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->reposts_count:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;->truncated:Z

    return-void
.end method
