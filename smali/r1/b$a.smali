.class public final Lr1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lr1/d;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr1/b$a;->a:Lr1/d;

    return-void
.end method


# virtual methods
.method public a()Lr1/b;
    .locals 2

    new-instance v0, Lr1/b;

    iget-object v1, p0, Lr1/b$a;->a:Lr1/d;

    invoke-direct {v0, v1}, Lr1/b;-><init>(Lr1/d;)V

    return-object v0
.end method

.method public b(Lr1/d;)Lr1/b$a;
    .locals 0

    iput-object p1, p0, Lr1/b$a;->a:Lr1/d;

    return-object p0
.end method
