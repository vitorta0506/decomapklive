.class public final synthetic Lcom/android/billingclient/api/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/billingclient/api/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/j0;->a:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lcom/android/billingclient/api/j0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/j0;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/android/billingclient/api/j0;->d:Lcom/android/billingclient/api/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/billingclient/api/j0;->a:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Lcom/android/billingclient/api/j0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/j0;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/billingclient/api/j0;->d:Lcom/android/billingclient/api/m;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/billingclient/api/b;->D(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)Ljava/lang/Object;

    return-object v4
.end method
