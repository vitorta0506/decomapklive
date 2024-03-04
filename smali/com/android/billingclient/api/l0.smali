.class public final synthetic Lcom/android/billingclient/api/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/g;

.field public final synthetic b:Lcom/android/billingclient/api/f;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/l0;->a:Lcom/android/billingclient/api/g;

    iput-object p2, p0, Lcom/android/billingclient/api/l0;->b:Lcom/android/billingclient/api/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/l0;->a:Lcom/android/billingclient/api/g;

    iget-object v1, p0, Lcom/android/billingclient/api/l0;->b:Lcom/android/billingclient/api/f;

    .line 1
    sget-object v2, Lcom/android/billingclient/api/w;->r:Lcom/android/billingclient/api/e;

    .line 2
    invoke-virtual {v1}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v2, v1}, Lcom/android/billingclient/api/g;->b(Lcom/android/billingclient/api/e;Ljava/lang/String;)V

    return-void
.end method
