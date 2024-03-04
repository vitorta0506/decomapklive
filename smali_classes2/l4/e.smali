.class public final Ll4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ll4/b;

.field private static volatile b:Ll4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll4/d;-><init>(Ll4/c;)V

    sput-object v0, Ll4/e;->a:Ll4/b;

    sput-object v0, Ll4/e;->b:Ll4/b;

    return-void
.end method

.method public static a()Ll4/b;
    .locals 1

    sget-object v0, Ll4/e;->b:Ll4/b;

    return-object v0
.end method
