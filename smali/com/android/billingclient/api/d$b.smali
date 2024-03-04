.class public Lcom/android/billingclient/api/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/d$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/d$b;->b:I

    return-void
.end method

.method public static c()Lcom/android/billingclient/api/d$b$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/d$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/d$b$a;-><init>(Lcom/android/billingclient/api/u;)V

    return-object v0
.end method

.method static synthetic d(Lcom/android/billingclient/api/d$b;I)I
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/d$b;->b:I

    return p1
.end method

.method static synthetic e(Lcom/android/billingclient/api/d$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/d$b;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/d$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/d$b;->b:I

    return v0
.end method
