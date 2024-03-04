.class public Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultData"
.end annotation


# instance fields
.field public actionData:Ljava/lang/String;

.field public clickAction:Ljava/lang/String;

.field public clickable:Z

.field public disableTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enableTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public fileUrl:Ljava/lang/String;

.field public id:I

.field public schemeUrl:Ljava/lang/String;

.field public skippable:Z

.field public stayTime:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
