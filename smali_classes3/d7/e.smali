.class public Ld7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroidx/lifecycle/ViewModelStoreOwner;

.field static b:Landroidx/lifecycle/ViewModelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld7/e$a;

    invoke-direct {v0}, Ld7/e$a;-><init>()V

    sput-object v0, Ld7/e;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 2
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    sput-object v1, Ld7/e;->b:Landroidx/lifecycle/ViewModelProvider;

    return-void
.end method

.method public static a()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    sget-object v0, Ld7/e;->b:Landroidx/lifecycle/ViewModelProvider;

    return-object v0
.end method
