.class public final Lq6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq6/a$a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method


# virtual methods
.method public a()Lq6/a;
    .locals 2

    new-instance v0, Lq6/a;

    iget-object v1, p0, Lq6/a$a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    invoke-direct {v0, v1}, Lq6/a;-><init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V

    return-object v0
.end method

.method public b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)Lq6/a$a;
    .locals 0

    iput-object p1, p0, Lq6/a$a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object p0
.end method
