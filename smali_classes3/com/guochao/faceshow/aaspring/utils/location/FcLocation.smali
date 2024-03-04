.class public Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;-><init>(DD)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->latitude:D

    .line 4
    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->longitude:D

    return-void
.end method

.method public static create(DD)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->longitude:D

    return-void
.end method
