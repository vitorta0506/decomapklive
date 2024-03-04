.class public final synthetic Lcom/google/android/gms/cloudmessaging/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/c;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cloudmessaging/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/x;->a:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/x;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/x;->a:Lcom/google/android/gms/cloudmessaging/b;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/x;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cloudmessaging/b;->e(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lt4/g;)V

    return-void
.end method
