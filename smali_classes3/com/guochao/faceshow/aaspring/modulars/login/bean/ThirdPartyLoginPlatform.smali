.class public Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private icon:I

.field private platform:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->icon:I

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->platform:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->type:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->icon:I

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->type:I

    return v0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->icon:I

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->platform:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->type:I

    return-void
.end method
