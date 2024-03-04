.class public final synthetic Lcom/facebook/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/k;

    invoke-direct {v0}, Lcom/facebook/k;-><init>()V

    sput-object v0, Lcom/facebook/k;->a:Lcom/facebook/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .locals 0

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->e(Z)V

    return-void
.end method
