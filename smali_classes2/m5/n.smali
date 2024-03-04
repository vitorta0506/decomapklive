.class public Lm5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm5/n;

    const-string v1, "version.gax_grpc"

    .line 2
    invoke-static {v0, v1}, Ll5/k;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm5/n;->a:Ljava/lang/String;

    .line 3
    const-class v0, Lio/grpc/d;

    const-string v1, "version.io_grpc"

    .line 4
    invoke-static {v0, v1}, Ll5/k;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm5/n;->b:Ljava/lang/String;

    const-string v0, "gl-java/.+ gapic/.* gax/.+ grpc/.+"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lm5/n;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "grpc"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm5/n;->b:Ljava/lang/String;

    return-object v0
.end method
