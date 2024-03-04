.class public final synthetic Lcom/google/firebase/messaging/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic b:Lt4/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lt4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/t;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/t;->b:Lt4/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/t;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/t;->b:Lt4/h;

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->f(Lcom/google/firebase/messaging/FirebaseMessaging;Lt4/h;)V

    return-void
.end method
