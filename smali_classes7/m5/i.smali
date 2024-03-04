.class public final synthetic Lm5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lm5/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/i;

    invoke-direct {v0}, Lm5/i;-><init>()V

    sput-object v0, Lm5/i;->a:Lm5/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm5/j$c;

    invoke-virtual {p1}, Lm5/j$c;->e()I

    move-result p1

    return p1
.end method
