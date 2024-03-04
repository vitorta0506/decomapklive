.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;->b:I

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
