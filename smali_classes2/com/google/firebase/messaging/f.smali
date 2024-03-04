.class public final synthetic Lcom/google/firebase/messaging/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/EnhancedIntentService;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lt4/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lt4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/f;->a:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lcom/google/firebase/messaging/f;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/f;->c:Lt4/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/f;->a:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lcom/google/firebase/messaging/f;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/f;->c:Lt4/h;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/EnhancedIntentService;->b(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lt4/h;)V

    return-void
.end method
