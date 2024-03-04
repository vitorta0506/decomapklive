.class abstract Leh/j1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/j1$c$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILeh/j1$c$a;)Leh/j1$c;
    .locals 1

    new-instance v0, Leh/r;

    invoke-direct {v0, p0, p1}, Leh/r;-><init>(ILeh/j1$c$a;)V

    return-object v0
.end method

.method static d(I)Leh/j1$c;
    .locals 1

    sget-object v0, Leh/j1$c$a;->a:Leh/j1$c$a;

    invoke-static {p0, v0}, Leh/j1$c;->a(ILeh/j1$c$a;)Leh/j1$c;

    move-result-object p0

    return-object p0
.end method

.method static e(I)Leh/j1$c;
    .locals 1

    sget-object v0, Leh/j1$c$a;->c:Leh/j1$c$a;

    invoke-static {p0, v0}, Leh/j1$c;->a(ILeh/j1$c$a;)Leh/j1$c;

    move-result-object p0

    return-object p0
.end method

.method static f(I)Leh/j1$c;
    .locals 1

    sget-object v0, Leh/j1$c$a;->b:Leh/j1$c$a;

    invoke-static {p0, v0}, Leh/j1$c;->a(ILeh/j1$c$a;)Leh/j1$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract b()Leh/j1$c$a;
.end method

.method abstract c()I
.end method
