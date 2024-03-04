.class public final synthetic Lcom/facebook/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u;

    invoke-direct {v0}, Lcom/facebook/internal/u;-><init>()V

    sput-object v0, Lcom/facebook/internal/u;->a:Lcom/facebook/internal/u;

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

    invoke-static {p1, p2}, Lcom/facebook/internal/WebDialog;->c(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
