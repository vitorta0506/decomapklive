.class public Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/JMessageExtraBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JMessageExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;
    }
.end annotation


# instance fields
.field private _jmsgid_:J

.field private m_content:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;

.field private show_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getM_content()Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->m_content:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;

    return-object v0
.end method

.method public getShow_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->show_type:I

    return v0
.end method

.method public get_jmsgid_()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->_jmsgid_:J

    return-wide v0
.end method

.method public setM_content(Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->m_content:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;

    return-void
.end method

.method public setShow_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->show_type:I

    return-void
.end method

.method public set_jmsgid_(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->_jmsgid_:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JMessageExtra{_jmsgid_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->_jmsgid_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", m_content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->m_content:Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra$MContentBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", show_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/JMessageExtraBean$JMessageExtra;->show_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
