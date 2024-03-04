.class public final synthetic Lcom/guochao/faceshow/aaspring/base/test/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/base/test/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/test/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/test/a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/test/a;->a:Lcom/guochao/faceshow/aaspring/base/test/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/test/TestModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->d0(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V

    return-void
.end method
