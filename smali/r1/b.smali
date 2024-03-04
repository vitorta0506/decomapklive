.class public final Lr1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/b$a;
    }
.end annotation


# static fields
.field private static final b:Lr1/b;


# instance fields
.field private final a:Lr1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/b$a;

    invoke-direct {v0}, Lr1/b$a;-><init>()V

    invoke-virtual {v0}, Lr1/b$a;->a()Lr1/b;

    move-result-object v0

    sput-object v0, Lr1/b;->b:Lr1/b;

    return-void
.end method

.method constructor <init>(Lr1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/b;->a:Lr1/d;

    return-void
.end method

.method public static b()Lr1/b$a;
    .locals 1

    new-instance v0, Lr1/b$a;

    invoke-direct {v0}, Lr1/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lr1/d;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lr1/b;->a:Lr1/d;

    return-object v0
.end method
