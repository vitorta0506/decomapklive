.class public Lcom/tencent/imsdk/message/CustomElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "SourceFile"


# instance fields
.field private data:[B

.field private description:Ljava/lang/String;

.field private extension:[B

.field private sound:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/MessageBaseElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/CustomElement;->data:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/CustomElement;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/CustomElement;->extension:[B

    return-object v0
.end method

.method public getSound()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/CustomElement;->sound:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/CustomElement;->data:[B

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/CustomElement;->description:Ljava/lang/String;

    return-void
.end method

.method public setExtension([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/CustomElement;->extension:[B

    return-void
.end method

.method public setSound([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/CustomElement;->sound:[B

    return-void
.end method
