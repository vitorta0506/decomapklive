.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/utils/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/c;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/c;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/c;->a:Lcom/guochao/faceshow/aaspring/utils/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(I)V
    .locals 0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->a(I)V

    return-void
.end method
