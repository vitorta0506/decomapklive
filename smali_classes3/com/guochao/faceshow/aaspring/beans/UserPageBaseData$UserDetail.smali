.class public Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail$GiftPhotoWall;
    }
.end annotation


# instance fields
.field public animal:Ljava/lang/String;

.field public approved:Ljava/lang/String;

.field public binded:Ljava/lang/String;

.field public constellation:Ljava/lang/String;

.field public giftPhotoWall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail$GiftPhotoWall;",
            ">;"
        }
    .end annotation
.end field

.field public height:Ljava/lang/String;

.field public job:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public monthIncome:Ljava/lang/String;

.field public preferenceLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public total:I

.field public userTotal:I

.field public weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
