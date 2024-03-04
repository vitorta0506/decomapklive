.class final Lcom/google/firebase/messaging/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/messaging/a$a;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;

.field private static final d:Ld6/b;

.field private static final e:Ld6/b;

.field private static final f:Ld6/b;

.field private static final g:Ld6/b;

.field private static final h:Ld6/b;

.field private static final i:Ld6/b;

.field private static final j:Ld6/b;

.field private static final k:Ld6/b;

.field private static final l:Ld6/b;

.field private static final m:Ld6/b;

.field private static final n:Ld6/b;

.field private static final o:Ld6/b;

.field private static final p:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/a$a;

    invoke-direct {v0}, Lcom/google/firebase/messaging/a$a;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/a$a;->a:Lcom/google/firebase/messaging/a$a;

    const-string v0, "projectNumber"

    .line 2
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->b:Ld6/b;

    const-string v0, "messageId"

    .line 8
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->c:Ld6/b;

    const-string v0, "instanceId"

    .line 14
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->d:Ld6/b;

    const-string v0, "messageType"

    .line 20
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x4

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->e:Ld6/b;

    const-string v0, "sdkPlatform"

    .line 26
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x5

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->f:Ld6/b;

    const-string v0, "packageName"

    .line 32
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x6

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->g:Ld6/b;

    const-string v0, "collapseKey"

    .line 38
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x7

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->h:Ld6/b;

    const-string v0, "priority"

    .line 44
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x8

    .line 46
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->i:Ld6/b;

    const-string v0, "ttl"

    .line 50
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x9

    .line 52
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->j:Ld6/b;

    const-string v0, "topic"

    .line 56
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xa

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->k:Ld6/b;

    const-string v0, "bulkId"

    .line 62
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xb

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->l:Ld6/b;

    const-string v0, "event"

    .line 68
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xc

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->m:Ld6/b;

    const-string v0, "analyticsLabel"

    .line 74
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xd

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->n:Ld6/b;

    const-string v0, "campaignId"

    .line 80
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xe

    .line 82
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->o:Ld6/b;

    const-string v0, "composerLabel"

    .line 86
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xf

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->p:Ld6/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/a$a;->b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Ld6/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Ld6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/a$a;->b:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->l()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 2
    sget-object v0, Lcom/google/firebase/messaging/a$a;->c:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 3
    sget-object v0, Lcom/google/firebase/messaging/a$a;->d:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 4
    sget-object v0, Lcom/google/firebase/messaging/a$a;->e:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->i()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 5
    sget-object v0, Lcom/google/firebase/messaging/a$a;->f:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->m()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 6
    sget-object v0, Lcom/google/firebase/messaging/a$a;->g:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 7
    sget-object v0, Lcom/google/firebase/messaging/a$a;->h:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 8
    sget-object v0, Lcom/google/firebase/messaging/a$a;->i:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->k()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/d;->c(Ld6/b;I)Ld6/d;

    .line 9
    sget-object v0, Lcom/google/firebase/messaging/a$a;->j:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->o()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/d;->c(Ld6/b;I)Ld6/d;

    .line 10
    sget-object v0, Lcom/google/firebase/messaging/a$a;->k:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 11
    sget-object v0, Lcom/google/firebase/messaging/a$a;->l:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 12
    sget-object v0, Lcom/google/firebase/messaging/a$a;->m:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->f()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 13
    sget-object v0, Lcom/google/firebase/messaging/a$a;->n:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 14
    sget-object v0, Lcom/google/firebase/messaging/a$a;->o:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 15
    sget-object v0, Lcom/google/firebase/messaging/a$a;->p:Ld6/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
