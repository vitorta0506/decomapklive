.class public Lcom/guochao/faceshow/bean/JMessageExtraBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;
    }
.end annotation


# instance fields
.field private JMessageExtra:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJMessageExtra()Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean;->JMessageExtra:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;

    return-object v0
.end method

.method public setJMessageExtra(Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean;->JMessageExtra:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JMessageExtraBean{JMessageExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean;->JMessageExtra:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
