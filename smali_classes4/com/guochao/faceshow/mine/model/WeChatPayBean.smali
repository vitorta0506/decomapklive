.class public Lcom/guochao/faceshow/mine/model/WeChatPayBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appid:Ljava/lang/String;

.field private noncestr:Ljava/lang/String;

.field private partnerid:Ljava/lang/String;

.field private prepayid:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->appid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->noncestr:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->partnerid:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->prepayid:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->sign:Ljava/lang/String;

    .line 8
    iput-wide p6, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->timestamp:J

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getNoncestr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->noncestr:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->partnerid:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepayid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->prepayid:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->timestamp:J

    return-wide v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setNoncestr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->noncestr:Ljava/lang/String;

    return-void
.end method

.method public setPartnerid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->partnerid:Ljava/lang/String;

    return-void
.end method

.method public setPrepayid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->prepayid:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeChatPayBean{appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", noncestr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->noncestr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", partnerid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->partnerid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", prepayid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->prepayid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->sign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/mine/model/WeChatPayBean;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
