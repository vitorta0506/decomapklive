.class public final synthetic Lcom/guochao/lib_core/feature/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic a:Lcom/guochao/lib_core/feature/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/lib_core/feature/a;

    invoke-direct {v0}, Lcom/guochao/lib_core/feature/a;-><init>()V

    sput-object v0, Lcom/guochao/lib_core/feature/a;->a:Lcom/guochao/lib_core/feature/a;

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

    check-cast p1, Lcom/guochao/lib_core/feature/FeatureResult;

    invoke-static {p1}, Lcom/guochao/lib_core/feature/Feature;->a(Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method
