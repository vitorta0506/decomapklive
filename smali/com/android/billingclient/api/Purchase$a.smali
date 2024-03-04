.class public Lcom/android/billingclient/api/Purchase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/billingclient/api/e;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/e;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/Purchase$a;->b:Lcom/android/billingclient/api/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$a;->b:Lcom/android/billingclient/api/e;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    return-object v0
.end method
