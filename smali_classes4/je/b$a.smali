.class public final Lje/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lbe/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lje/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lje/b$a;)Lbe/b;
    .locals 0

    iget-object p0, p0, Lje/b$a;->a:Lbe/b;

    return-object p0
.end method


# virtual methods
.method public final b()Lje/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lje/b$a;->a:Lbe/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lje/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lje/b;-><init>(Lje/b$a;B)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lbe/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lbe/b;)Lje/b$a;
    .locals 0

    invoke-static {p1}, Leg/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbe/b;

    iput-object p1, p0, Lje/b$a;->a:Lbe/b;

    return-object p0
.end method
