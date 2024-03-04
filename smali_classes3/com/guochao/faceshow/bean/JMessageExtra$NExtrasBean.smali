.class public Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/JMessageExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NExtrasBean"
.end annotation


# instance fields
.field private key1:Ljava/lang/String;

.field private key2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;->key1:Ljava/lang/String;

    return-object v0
.end method

.method public getKey2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;->key2:Ljava/lang/String;

    return-object v0
.end method

.method public setKey1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;->key1:Ljava/lang/String;

    return-void
.end method

.method public setKey2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;->key2:Ljava/lang/String;

    return-void
.end method
