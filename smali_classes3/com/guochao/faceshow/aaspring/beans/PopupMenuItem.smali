.class public Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->title:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->title:Ljava/lang/String;

    return-void
.end method
