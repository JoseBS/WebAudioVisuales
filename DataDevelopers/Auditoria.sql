/*DELETE*/
CREATE TABLE IF NOT EXISTS auditoria_delete_permisos(
    id_auditoria_delete_permisos    INT             AUTO_INCREMENT,
    id_permiso                      INT             NULL,
    permiso                         VARCHAR(20)     NULL,
    valor                           INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_permisos)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_tipos_usuarios(
    id_auditoria_delete_tipos_usuarios  INT             AUTO_INCREMENT,
    id_tipo_usuario                 INT             NULL,
    tipo_usuario                    VARCHAR(20)     NULL,
    descripcion                     TEXT            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_tipos_usuarios)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_permisos_tipos_usuarios(
    id_auditoria_delete_permisos_tipos_usuarios INT             AUTO_INCREMENT,
    id_permiso_tipo_usuario         INT             NULL,
    id_tipo_usuario                 INT             NULL,
    id_permiso                      INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_permisos_tipos_usuarios)  
);

CREATE TABLE IF NOT EXISTS auditoria_delete_usuarios(
    id_auditoria_delete_usuarios    INT             AUTO_INCREMENT,
    id_usuario                      INT             NULL,
    documento                       VARCHAR(20)     NULL,
    nombres                         VARCHAR(20)     NULL,
    apellidos                       VARCHAR(20)     NULL,
    email                           VARCHAR(30)     NULL,
    passwd                          VARCHAR(100)    NULL,
    activo                          BOOLEAN         NULL,
    id_tipo_usuario              INT             NULL,
    id_jefe                         INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_usuarios)
);





CREATE TABLE IF NOT EXISTS auditoria_delete_descansos(
    id_auditoria_delete_descansos   INT             AUTO_INCREMENT,
    id_descanso                     INT             NULL,
    nombre                          VARCHAR(20)     NULL,
    hora_inicio                     TIME            NULL,
    duracion                        TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_descansos)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_parametros_horario(
    id_auditoria_delete_parametros_horario  INT             AUTO_INCREMENT,
    id_parametro_horario            INT             NULL,
    nombre                          VARCHAR(30)     NULL,
    hora_inicio_jornada             TIME            NULL,
    hora_final_jornada              TIME            NULL,
    duracion_hora_academica         TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_parametros_horario)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_parametros_reservas(
    id_auditoria_delete_parametros_reservas INT             AUTO_INCREMENT,
    id_parametro_reserva            INT             NULL,
    nombre                          VARCHAR(30)     NULL,
    dias_minimos_reserva            SMALLINT        NULL,
    tiempo_minimo_reserva           TIME            NULL,
    dias_maximos_reserva            SMALLINT        NULL,
    tiempo_maximo_reserva           TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_parametros_reservas)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_horas(
    id_auditoria_delete_horas   INT             AUTO_INCREMENT,
    id_hora                         INT             NULL,
    hora                            TIME            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_horas)
);

CREATE TABLE IF NOT EXISTS auditoria_delete_periodos_academicos(
    id_auditoria_delete_periodos_academicos INT             AUTO_INCREMENT,
    id_periodo_academico            INT             NULL,
    nombre                          VARCHAR(50)     NULL,
    fecha_inicio                    DATE            NULL,
    fecha_final                     DATE            NULL,
    estado                          BOOLEAN         NULL,
    descripcion                     TEXT            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_delete_periodos_academicos)
);

/*UPDATE */
CREATE TABLE IF NOT EXISTS auditoria_update_permisos(
    id_auditoria_update_permisos    INT             AUTO_INCREMENT,
    id_permiso                      INT             NULL,
    permiso                         VARCHAR(20)     NULL,
    valor                           INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_permisos)
    
);

CREATE TABLE IF NOT EXISTS auditoria_update_tipos_usuarios(
    id_auditoria_update_tipos_usuarios  INT             AUTO_INCREMENT,
    id_tipo_usuario                 INT             NULL,
    tipo_usuario                    VARCHAR(20)     NULL,
    descripcion                     TEXT            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_tipos_usuarios)
);

CREATE TABLE IF NOT EXISTS auditoria_update_permisos_tipos_usuarios(
    id_auditoria_update_permisos_tipos_usuarios INT             AUTO_INCREMENT,
    id_permiso_tipo_usuario         INT             NULL,
    id_tipo_usuario                 INT             NULL,
    id_permiso                      INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_permisos_tipos_usuarios)    
);

CREATE TABLE IF NOT EXISTS auditoria_update_usuarios(
    id_auditoria_update_usuarios    INT             AUTO_INCREMENT,
    id_usuario                      INT             NULL,
    documento                       VARCHAR(20)     NULL,
    nombres                         VARCHAR(20)     NULL,
    apellidos                       VARCHAR(20)     NULL,
    email                           VARCHAR(30)     NULL,
    passwd                          VARCHAR(100)    NULL,
    activo                          BOOLEAN         NULL,
    id_tipo_usuario              INT             NULL,
    id_jefe                         INT             NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_usuarios)
);





CREATE TABLE IF NOT EXISTS auditoria_update_descansos(
    id_auditoria_update_descansos   INT             AUTO_INCREMENT,
    id_descanso                     INT             NULL,
    nombre                          VARCHAR(20)     NULL,
    hora_inicio                     TIME            NULL,
    duracion                        TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_descansos)
);

CREATE TABLE IF NOT EXISTS auditoria_update_parametros_horario(
    id_auditoria_update_parametros_horario  INT             AUTO_INCREMENT,
    id_parametro_horario            INT             NULL,
    nombre                          VARCHAR(30)     NULL,
    hora_inicio_jornada             TIME            NULL,
    hora_final_jornada              TIME            NULL,
    duracion_hora_academica         TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_parametros_horario)
);

CREATE TABLE IF NOT EXISTS auditoria_update_parametros_reservas(
    id_auditoria_update_parametros_reservas INT             AUTO_INCREMENT,
    id_parametro_reserva            INT             NULL,
    nombre                          VARCHAR(30)     NULL,
    dias_minimos_reserva            SMALLINT        NULL,
    tiempo_minimo_reserva           TIME            NULL,
    dias_maximos_reserva            SMALLINT        NULL,
    tiempo_maximo_reserva           TIME            NULL,
    estado                          BOOLEAN         NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_parametros_reservas)
);

CREATE TABLE IF NOT EXISTS auditoria_update_horas(
    id_auditoria_update_horas   INT             AUTO_INCREMENT,
    id_hora                         INT             NULL,
    hora                            TIME            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_horas)
);

CREATE TABLE IF NOT EXISTS auditoria_update_periodos_academicos(
    id_auditoria_update_periodos_academicos INT             AUTO_INCREMENT,
    id_periodo_academico            INT             NULL,
    nombre                          VARCHAR(50)     NULL,
    fecha_inicio                    DATE            NULL,
    fecha_final                     DATE            NULL,
    estado                          BOOLEAN         NULL,
    descripcion                     TEXT            NULL,
    usuario_id                      INT             NOT NULL,
    hora_action                     TIMESTAMP       NOT NULL,
    PRIMARY KEY (id_auditoria_update_periodos_academicos)
);