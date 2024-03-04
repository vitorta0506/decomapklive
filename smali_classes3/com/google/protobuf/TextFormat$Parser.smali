.class public Lcom/google/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$Parser$a;,
        Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/d3;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/d3;ZZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/y2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser;->a:Lcom/google/protobuf/d3;

    .line 4
    iput-boolean p2, p0, Lcom/google/protobuf/TextFormat$Parser;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/google/protobuf/TextFormat$Parser;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/google/protobuf/TextFormat$Parser;->d:Z

    .line 7
    iput-object p5, p0, Lcom/google/protobuf/TextFormat$Parser;->e:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/d3;ZZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/y2;Lcom/google/protobuf/TextFormat$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/protobuf/TextFormat$Parser;-><init>(Lcom/google/protobuf/d3;ZZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/y2;)V

    return-void
.end method

.method public static a()Lcom/google/protobuf/TextFormat$Parser$a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/TextFormat$Parser$a;

    invoke-direct {v0}, Lcom/google/protobuf/TextFormat$Parser$a;-><init>()V

    return-object v0
.end method
