.class public final Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final c:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b:Z

    return v0
.end method

.method public c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b:Z

    return-object p0
.end method
