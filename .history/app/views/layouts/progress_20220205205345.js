var bar = new ProgressBar.Line(splash_text, {//id�����w��
    easing: 'easeInOut',//�A�j���[�V��������linear�AeaseIn�AeaseOut�AeaseInOut���w��\
    duration: 1000,//���Ԏw��(1000��1�b)
    strokeWidth: 0.2,//�i���Q�[�W�̑���
    color: '#555',//�i���Q�[�W�̃J���[
    trailWidth: 0.2,//�Q�[�W�x�[�X�̐��̑���
    trailColor: '#bbb',//�Q�[�W�x�[�X�̐��̃J���[
    text: {//�e�L�X�g�̌`��𒼐ڎw��       
      style: {//�V�n�����ɔz�u
        position: 'absolute',
        left: '50%',
        top: '50%',
        padding: '0',
        margin: '-30px 0 0 0',//�o�[����ɔz�u
        transform:'translate(-50%,-50%)',
        'font-size':'1rem',
        color: '#fff',
      },
      autoStyleContainer: false //�����t�^�̃X�^�C����؂�
    },
    step: function(state, bar) {
      bar.setText(Math.round(bar.value() * 100) + ' %'); //�e�L�X�g�̐��l
    }
  });
  
  //�A�j���[�V�����X�^�[�g
  bar.animate(1.0, function () {//�o�[��`�悷�銄�����w�肵�܂� 1.0 �Ȃ�100%�܂ŕ`�悵�܂�
    $("#splash").delay(500).fadeOut(800);//�A�j���[�V�������I�������#splash�G���A���t�F�[�h�A�E�g
  });  
  
  
  
  