.class public final synthetic Ldb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic a:Ldb/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ldb/a;

    invoke-direct {v0}, Ldb/a;-><init>()V

    sput-object v0, Ldb/a;->a:Ldb/a;

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

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    invoke-static {p1}, Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;->a(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-void
.end method
