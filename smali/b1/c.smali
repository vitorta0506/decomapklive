.class public final synthetic Lb1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lb1/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Lb1/c;-><init>()V

    sput-object v0, Lb1/c;->a:Lb1/c;

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

    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentManager;->b(Z)V

    return-void
.end method
