.class public final Lcom/android/billingclient/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/e$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/android/billingclient/api/e$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/e$a;-><init>(Lcom/android/billingclient/api/v;)V

    return-object v0
.end method

.method static synthetic d(Lcom/android/billingclient/api/e;I)I
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/e;->a:I

    return p1
.end method

.method static synthetic e(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/e;->a:I

    return v0
.end method
