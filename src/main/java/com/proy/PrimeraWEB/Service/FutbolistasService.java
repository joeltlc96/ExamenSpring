package com.proy.PrimeraWEB.Service;



import com.ejemplo.futbolistas.model.Futbolista;
import com.ejemplo.futbolistas.repository.FutbolistaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FutbolistaService {
    @Autowired
    private FutbolistaRepository futbolistaRepository;

    public Futbolista crearFutbolista(Futbolista futbolista) {
        return futbolistaRepository.save(futbolista);
    }

    public Optional<Futbolista> obtenerFutbolistaPorId(Long id) {
        return futbolistaRepository.findById(id);
    }

    public List<Futbolista> obtenerFutbolistasActivos() {
        return futbolistaRepository.findAll().stream()
                .filter(f -> "Activo".equals(f.getEstado()))
                .toList();
    }

    public Futbolista actualizarFutbolista(Futbolista futbolista) {
        return futbolistaRepository.save(futbolista);
    }

    public void eliminarFutbolista(Long id) {
        Optional<Futbolista> futbolista = futbolistaRepository.findById(id);
        futbolista.ifPresent(f -> {
            f.setEstado("Inactivo");
            futbolistaRepository.save(f);
        });
    }
}
