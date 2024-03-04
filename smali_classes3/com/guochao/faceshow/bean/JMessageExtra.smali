.class public Lcom/guochao/faceshow/bean/JMessageExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;
    }
.end annotation


# instance fields
.field private msg_id:Ljava/lang/String;

.field private n_content:Ljava/lang/String;

.field private n_extras:Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;

.field private n_title:Ljava/lang/String;

.field private rom_type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->msg_id:Ljava/lang/String;

    return-object v0
.end method

.method public getN_content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_content:Ljava/lang/String;

    return-object v0
.end method

.method public getN_extras()Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_extras:Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;

    return-object v0
.end method

.method public getN_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_type()B
    .locals 1

    iget-byte v0, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->rom_type:B

    return v0
.end method

.method public setMsg_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->msg_id:Ljava/lang/String;

    return-void
.end method

.method public setN_content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_content:Ljava/lang/String;

    return-void
.end method

.method public setN_extras(Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_extras:Lcom/guochao/faceshow/bean/JMessageExtra$NExtrasBean;

    return-void
.end method

.method public setN_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->n_title:Ljava/lang/String;

    return-void
.end method

.method public setRom_type(B)V
    .locals 0

    iput-byte p1, p0, Lcom/guochao/faceshow/bean/JMessageExtra;->rom_type:B

    return-void
.end method
