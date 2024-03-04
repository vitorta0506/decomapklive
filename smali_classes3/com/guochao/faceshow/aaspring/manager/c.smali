.class public final synthetic Lcom/guochao/faceshow/aaspring/manager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/manager/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/c;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/c;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/c;->a:Lcom/guochao/faceshow/aaspring/manager/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->a()V

    return-void
.end method
