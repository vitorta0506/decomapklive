.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
