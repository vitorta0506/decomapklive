.class public Lcom/guochao/faceshow/aaspring/beans/ThirdPartyRegisterState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REGISTED:I = 0x1

.field public static final UNREGISTED:I


# instance fields
.field private isReg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsReg()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ThirdPartyRegisterState;->isReg:I

    return v0
.end method

.method public setIsReg(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ThirdPartyRegisterState;->isReg:I

    return-void
.end method
