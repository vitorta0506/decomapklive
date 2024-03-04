.class public final Lq6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6/a$a;
    }
.end annotation


# static fields
.field private static final b:Lq6/a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq6/a$a;

    invoke-direct {v0}, Lq6/a$a;-><init>()V

    invoke-virtual {v0}, Lq6/a$a;->a()Lq6/a;

    move-result-object v0

    sput-object v0, Lq6/a;->b:Lq6/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq6/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method public static b()Lq6/a$a;
    .locals 1

    new-instance v0, Lq6/a$a;

    invoke-direct {v0}, Lq6/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lq6/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object v0
.end method

.method public c()[B
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/messaging/g0;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
